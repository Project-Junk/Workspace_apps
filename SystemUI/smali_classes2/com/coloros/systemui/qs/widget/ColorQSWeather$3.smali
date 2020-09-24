.class Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;
.super Ljava/lang/Object;
.source "ColorQSWeather.java"

# interfaces
.implements Lcom/oppo/weatherservicesdk/BaseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/widget/ColorQSWeather;->requestNewLocalWeatherInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oppo/weatherservicesdk/BaseCallBack<",
        "Lcom/oppo/weatherservicesdk/model/SecureSettingsData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$ColorQSWeather$3(Ljava/lang/String;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onSuccess$1$ColorQSWeather$3(Ljava/lang/String;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "ColorQSWeather"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$500(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->unregisterCallback(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;)V

    return-void
.end method

.method public onSuccess(Lcom/oppo/weatherservicesdk/model/SecureSettingsData;)V
    .locals 7

    const-string v0, "ColorQSWeather"

    const-string v1, "Statusbar"

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x0

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-virtual {v4}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->getLayoutDirection()I

    move-result v4

    .line 165
    iget-object v5, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->temp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    iget-object v2, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->temp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v5, 0x1

    const-string v6, " "

    if-ne v4, v5, :cond_1

    .line 169
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->weatherDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->tempUnit:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v2, v3}, Lcom/coloros/systemui/common/util/StatusBarUtils;->convertNumberToLocal(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 172
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->weatherDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v2, v3}, Lcom/coloros/systemui/common/util/StatusBarUtils;->convertNumberToLocal(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->tempUnit:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess weatherInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v3, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->weatherDesc:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->temp:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object p1, p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;->tempUnit:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$200(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "weatherInfo"

    if-eqz p1, :cond_3

    .line 185
    :try_start_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    new-instance v4, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$pbrItOr53i3N6k3z6virgJgJUMI;

    invoke-direct {v4, p0, v2}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$pbrItOr53i3N6k3z6virgJgJUMI;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->post(Ljava/lang/Runnable;)Z

    .line 186
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$300(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/coloros/systemui/ColorPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/content/Context;

    move-result-object p1

    const-string v2, ""

    invoke-static {p1, v3, v2}, Lcom/coloros/systemui/ColorPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    new-instance v3, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;

    invoke-direct {v3, p0, p1}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestNewLocalWeatherInfo,onWeatherInfoChanged,Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_4
    :goto_1
    invoke-static {}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->getInstance()Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$500(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Lcom/oppo/weatherservicesdk/service/WeatherBaseDataTask;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oppo/weatherservicesdk/service/WeatherServiceManager;->unregisterCallback(Lcom/oppo/weatherservicesdk/service/WeatherServiceManager$IWeatherServiceManagerCallback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/oppo/weatherservicesdk/model/SecureSettingsData;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->onSuccess(Lcom/oppo/weatherservicesdk/model/SecureSettingsData;)V

    return-void
.end method
