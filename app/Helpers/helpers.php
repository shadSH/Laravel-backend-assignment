<?php


use Illuminate\Http\Response;

if (! function_exists('jsonResponse')) {
    function jsonResponse(
        int $status = Response::HTTP_OK,
        string $message = '',
        object|array $data = null,
        object|array $extraData = null,
        array $errors = [],
        array $meta = []
    ): Illuminate\Contracts\Foundation\Application|Illuminate\Contracts\Routing\ResponseFactory|Illuminate\Foundation\Application|Illuminate\Http\Response {
        $content = [];
        if ($message) {
            $content['message'] = $message;
        }
        if ($data) {
            $content['data'] = $data;
        }
        if ($extraData) {
            $content['extraData'] = $extraData;
        }
        if ($errors) {
            $content['errors'] = $errors;
        }
        if ($meta) {
            $content['meta'] = $meta;
        }

        return ! empty($content) ? response($content, $status) : response(status: $status);
    }
}
