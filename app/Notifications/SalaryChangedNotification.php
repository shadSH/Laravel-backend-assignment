<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class SalaryChangedNotification extends Notification
{
    use Queueable;

    public $oldSalary;
    public $newSalary;

    /**
     * Create a new notification instance.
     *
     * @param float $oldSalary
     * @param float $newSalary
     */
    public function __construct(float $oldSalary, float $newSalary)
    {
        $this->oldSalary = $oldSalary;
        $this->newSalary = $newSalary;
    }

    /**
     * Get the notification's delivery channels.
     */
    public function via(object $notifiable): array
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
            ->subject('Important: Salary Update Notification')
            ->greeting('Hello!')
            ->line("We're writing to inform you that your salary has been updated.")
            ->line("Old Salary: \$" . number_format($this->oldSalary, 2))
            ->line("New Salary: \$" . number_format($this->newSalary, 2))
            ->action('View Details', url('/login'))
            ->line('Thank you for being a valued member of our team!');
    }

    /**
     * Get the array representation of the notification.
     */
    public function toArray(object $notifiable): array
    {
        return [
            'oldSalary' => $this->oldSalary,
            'newSalary' => $this->newSalary,
        ];
    }
}
