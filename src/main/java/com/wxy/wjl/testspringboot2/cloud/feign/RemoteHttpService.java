package com.wxy.wjl.testspringboot2.cloud.feign;

import com.wxy.wjl.providerapi.entiy.ProviderReqBO;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(name="igw",url = "${remote.url}")
@RequestMapping("/igw/igwntcmng")
public interface RemoteHttpService {

    // 因为api里也引用了此mapping  此处改个名字
    @RequestMapping("/igwSendEmail")
    String remoteService(@RequestBody ProviderReqBO providerReqBO);

}
