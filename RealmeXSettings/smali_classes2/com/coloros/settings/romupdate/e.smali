.class public final Lcom/coloros/settings/romupdate/e;
.super Ljava/lang/Object;
.source "VideoBeautyDataParser.java"


# static fields
.field public static a:I

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static c:[I

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    const/16 v0, 0xb

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/romupdate/e;->c:[I

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    sput v0, Lcom/coloros/settings/romupdate/e;->e:I

    const/16 v1, 0x1e

    .line 52
    sput v1, Lcom/coloros/settings/romupdate/e;->f:I

    .line 53
    sput v0, Lcom/coloros/settings/romupdate/e;->g:I

    .line 60
    sput v0, Lcom/coloros/settings/romupdate/e;->a:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1e
        0x0
        0x0
    .end array-data
.end method

.method private static a(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;
    .locals 3

    .line 319
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/google/b/f;

    invoke-direct {v0}, Lcom/google/b/f;-><init>()V

    .line 324
    :try_start_0
    const-class v2, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;

    invoke-virtual {v0, p0, v2}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parseJson e: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoBeautyDataParser"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_0
    return-object v1
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;"
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/romupdate/e$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/romupdate/e$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "settings_shared"

    const/4 v1, 0x0

    .line 386
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 388
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "video_beauty_content"

    .line 389
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "settings_shared"

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 305
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 306
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setVideoBeautyParamByKey, key: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", param: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoBeautyDataParser"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    sget-object v1, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    .line 169
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v3

    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {v3, p2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setFbParam(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 181
    invoke-virtual {v3, p3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setIsOpen(Ljava/lang/String;)V

    .line 184
    :cond_2
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->setVideoBeautyParam(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;)V

    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oppo.video.beauty."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    new-instance v4, Lcom/google/b/f;

    invoke-direct {v4}, Lcom/google/b/f;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2, v3}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p0, v2, v3}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    sget-object p1, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 193
    sget-object p1, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    sget-object p1, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/settings/romupdate/e;->a(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 197
    sget-object p2, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->setAppConfigList(Ljava/util/List;)V

    .line 198
    new-instance p2, Lcom/google/b/f;

    invoke-direct {p2}, Lcom/google/b/f;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    .line 199
    sget-object p1, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;)V"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/google/b/f;

    invoke-direct {v0}, Lcom/google/b/f;-><init>()V

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oppo.video.beauty."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 270
    invoke-static {v2, v3}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "updateVideoBeautyParam, currentValue: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoBeautyDataParser"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {p0, v2}, Lcom/coloros/settings/romupdate/e;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "updateVideoBeautyParam, param from sp, currentValue: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    :try_start_0
    const-class v4, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {v0, v3, v4}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    .line 283
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v4

    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getIsOpen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setIsOpen(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v4

    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getFbParam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setFbParam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "e: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v2, v1}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;
    .locals 3

    .line 409
    new-instance v0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;-><init>()V

    .line 411
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 416
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/b/f;

    invoke-direct {v1}, Lcom/google/b/f;-><init>()V

    const-class v2, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {v1, p0, v2}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVideoBeautyParam, e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VideoBeautyDataParser"

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;-><init>()V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1201d3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->setAppName(Ljava/lang/String;)V

    const-string p0, "com.tencent.mm"

    .line 125
    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->setPackageName(Ljava/lang/String;)V

    .line 126
    new-instance p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;-><init>()V

    const-string v1, "0"

    .line 127
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setIsOpen(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->setVideoBeautyParam(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;)V

    .line 129
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "settings_shared"

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 402
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_key_support_video_beauty_list"

    .line 403
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b()Z
    .locals 3

    .line 208
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "coloros.customize.settings.hide_video_beauty"

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoBeautyDataParser"

    const-string v2, "isSupportVideoBeauty, need hide video beauty!"

    .line 212
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 217
    :cond_0
    sget v0, Lcom/coloros/settings/romupdate/e;->e:I

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;)I
    .locals 6

    .line 336
    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/coloros/settings/romupdate/e;->a(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;

    move-result-object v0

    const-string v1, "VideoBeautyDataParser"

    if-nez v0, :cond_0

    const-string p0, "getCurrentSmoothLevel, videoBeautyConfig is null"

    .line 340
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget p0, Lcom/coloros/settings/romupdate/e;->f:I

    return p0

    .line 345
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getAppConfigList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 348
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oppo.video.beauty."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 351
    invoke-static {v0, v3}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getCurrentSmoothLevel, value: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    invoke-static {p0, v0}, Lcom/coloros/settings/romupdate/e;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getCurrentSmoothLevel, param from sp, value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 362
    new-instance p0, Lcom/google/b/f;

    invoke-direct {p0}, Lcom/google/b/f;-><init>()V

    const-class v0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {p0, v3, v0}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    .line 363
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getFbParam()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 364
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 368
    :cond_2
    sget p0, Lcom/coloros/settings/romupdate/e;->f:I

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ";"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 494
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "\\*"

    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 497
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 498
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 499
    aget-object v5, v3, v1

    const-string v6, "oppo.video.beauty."

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 500
    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/coloros/settings/romupdate/e;->b(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v3

    .line 501
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getFbParam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getIsOpen()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4, v5, v3}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c()Z
    .locals 4

    .line 221
    sget-object v0, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oppo.video.beauty."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 223
    invoke-static {v1, v2}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    new-instance v2, Lcom/google/b/f;

    invoke-direct {v2}, Lcom/google/b/f;-><init>()V

    const-class v3, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {v2, v1, v3}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    .line 231
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->getIsOpen()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static d()Ljava/lang/String;
    .locals 7

    const-string v0, "parseDefaultSystemConfig e: "

    const-string v1, "Error occur, e = "

    const-string v2, "VideoBeautyDataParser"

    .line 427
    invoke-static {}, Lcom/color/compat/os/EnvironmentNative;->getOppoVersionDirectory()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/etc/camera/video_beauty_default_config"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "/oppo_version/etc/camera/video_beauty_default_config"

    .line 437
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 444
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 445
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 448
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v5

    .line 455
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v3

    .line 452
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 455
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 455
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_5
    throw v0

    :cond_2
    :goto_6
    const-string v0, ""

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "settings_shared"

    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_key_support_video_beauty_list"

    const-string v1, ""

    .line 396
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "settings_shared"

    const/4 v1, 0x0

    .line 297
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 299
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 466
    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, ";"

    .line 473
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 477
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 478
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "oppo.video.beauty."

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 479
    invoke-static {v4, v5}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Landroid/content/Context;)V
    .locals 10

    const-string v0, "VideoBeautyDataParser"

    const-string v1, "version"

    const-string v2, "xml"

    .line 1074
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 1076
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v4, "content://com.nearme.romupdate.provider.db/update_list"

    .line 1081
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "filtername=\'apps_settings_video_beauty_config\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1084
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1085
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1086
    :try_start_2
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    move-object v4, v2

    move v5, v9

    :goto_0
    if-eqz v3, :cond_2

    .line 1092
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v2

    goto/16 :goto_7

    :catch_1
    move-object v3, v2

    move-object v4, v3

    :catch_2
    :goto_1
    :try_start_3
    const-string v5, "read exception !"

    .line 1089
    invoke-static {v0, v5}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 1092
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move v5, v9

    :cond_2
    :goto_2
    if-eqz v4, :cond_6

    .line 1135
    invoke-static {v4}, Lcom/coloros/settings/romupdate/e;->a(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_3
    move-object v4, v2

    goto :goto_5

    .line 1142
    :cond_3
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getIsParamAdjustOpen()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1143
    invoke-virtual {v3}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getAppConfigList()Ljava/util/List;

    move-result-object v1

    .line 1144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    .line 1147
    sget-object v4, Lcom/coloros/settings/romupdate/e;->c:[I

    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->c(Landroid/content/Context;)I

    move-result v6

    aput v6, v4, v9

    .line 1148
    sget-object v4, Lcom/coloros/settings/romupdate/e;->c:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const-string v7, "["

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;

    .line 1151
    invoke-virtual {v6}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->getVideoBeautyParam()Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    move-result-object v7

    .line 1152
    invoke-virtual {v7, v4}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setFbParam(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v6, v7}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyAppConfig;->setVideoBeautyParam(Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;)V

    .line 1154
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1158
    :cond_4
    invoke-virtual {v3, v2}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->setAppConfigList(Ljava/util/List;)V

    .line 1161
    :cond_5
    new-instance v1, Lcom/google/b/f;

    invoke-direct {v1}, Lcom/google/b/f;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_5
    const-string v1, "settings_shared"

    .line 1313
    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "video_beauty_version"

    .line 1315
    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1101
    sput v2, Lcom/coloros/settings/romupdate/e;->g:I

    .line 1102
    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    .line 1104
    sget v2, Lcom/coloros/settings/romupdate/e;->g:I

    if-lt v2, v5, :cond_7

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "initialize, no need update, currentVersion: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/coloros/settings/romupdate/e;->g:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", updateVersion: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1108
    :cond_7
    sput-object v4, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    .line 1109
    sput v5, Lcom/coloros/settings/romupdate/e;->g:I

    .line 1113
    :goto_6
    sget-object v0, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1114
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    .line 1117
    :cond_8
    sget v0, Lcom/coloros/settings/romupdate/e;->g:I

    .line 1372
    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1374
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1375
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1376
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1118
    sget-object v0, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1119
    sget-object v0, Lcom/coloros/settings/romupdate/e;->d:Ljava/lang/String;

    .line 2240
    invoke-static {v0}, Lcom/coloros/settings/romupdate/e;->a(Ljava/lang/String;)Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2246
    :cond_9
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getIsParamAdjustOpen()I

    move-result v1

    sput v1, Lcom/coloros/settings/romupdate/e;->a:I

    const-string v1, "oppo.switch.video.beauty"

    const-string v2, "1"

    .line 2247
    invoke-static {v1, v2}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    sget-object v2, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2250
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getAppConfigList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2251
    sget-object v2, Lcom/coloros/settings/romupdate/e;->b:Ljava/util/List;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getAppConfigList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2252
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getAppConfigList()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 2253
    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyConfig;->getIsFunctionOpen()I

    move-result p0

    .line 2255
    sput p0, Lcom/coloros/settings/romupdate/e;->e:I

    if-nez p0, :cond_a

    const-string p0, "0"

    .line 2256
    invoke-static {v1, p0}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_1
    move-exception p0

    :goto_7
    if-eqz v3, :cond_b

    .line 1092
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1095
    :cond_b
    throw p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "settings_shared"

    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "video_beauty_content"

    const-string v1, ""

    .line 382
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
