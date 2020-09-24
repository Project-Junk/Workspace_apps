.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;
.super Ljava/lang/Object;
.source "QuickAppRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$HolderClass;
    }
.end annotation


# static fields
.field private static final AND:Ljava/lang/String; = "&"

.field private static final EQUAL:Ljava/lang/String; = "="

.field private static final INVALID:I = -0x1

.field private static final KEYGUARD_OPEN_OLD_TAG:Ljava/lang/String; = "swl=1"

.field private static final KEYGUARD_OPEN_TAG:Ljava/lang/String; = "_SWL_=1"

.field private static final ORIGIN:Ljava/lang/String; = "17"

.field private static final QUICK_APP_PACKAGE:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final SCENE:Ljava/lang/String; = "scene"

.field private static final SECRET:Ljava/lang/String; = "48385cbe621e2de367a01e425bf559bf"

.field private static final TAG:Ljava/lang/String; = "QuickAppRouter"

.field private static final TRACE_ID:Ljava/lang/String; = "traceId"

.field private static final UTF_8:Ljava/lang/String; = "utf-8"


# instance fields
.field private mCallback:Lcom/nearme/instant/router/callback/Callback;

.field private mOppoActivityManager:Landroid/app/OppoActivityManager;

.field private mQuickAppOpenCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

.field private mQuickAppUid:I

.field private mScene:Ljava/lang/String;

.field private mTraceID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppUid:I

    .line 87
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mCallback:Lcom/nearme/instant/router/callback/Callback;

    .line 58
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->initInstant()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppOpenCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    return-object p0
.end method

.method private buildFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    invoke-static {}, Lcom/nearme/instant/router/Instant;->createFromBuilder()Lcom/nearme/instant/router/Instant$FromBuilder;

    move-result-object p0

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0, p1}, Lcom/nearme/instant/router/Instant$FromBuilder;->setScene(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$FromBuilder;

    .line 73
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 74
    invoke-virtual {p0, p2}, Lcom/nearme/instant/router/Instant$FromBuilder;->setTraceId(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$FromBuilder;

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/nearme/instant/router/Instant$FromBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkOapsUriValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->getRealOaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalOaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickAppRouter"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->isInstantPlatformInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "have not install instant platform"

    .line 214
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 218
    :cond_1
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->isInstantOapsUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "invalid instant oaps uri"

    .line 219
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 223
    :cond_2
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->isFitPltVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "not fit platform"

    .line 224
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;
    .locals 1

    .line 62
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$HolderClass;->access$100()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    move-result-object v0

    return-object v0
.end method

.method private static getRealOaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "traceId"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getTraceIdAndScene(Ljava/lang/String;)V
    .locals 6

    const-string v0, "QuickAppRouter"

    const-string v1, "traceId"

    const/4 v2, 0x0

    .line 142
    iput-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mTraceID:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mScene:Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "utf-8"

    .line 150
    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "&"

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 154
    array-length v2, p1

    if-nez v2, :cond_0

    return-void

    .line 158
    :cond_0
    array-length v2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "="

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    .line 159
    :try_start_1
    aget-object v5, p1, v2

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    aget-object v2, p1, v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mTraceID:Ljava/lang/String;

    .line 165
    :cond_1
    array-length v2, p1

    if-le v2, v4, :cond_3

    .line 166
    array-length v2, p1

    sub-int/2addr v2, v4

    aget-object v2, p1, v2

    const-string v5, "scene"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    array-length v2, p1

    sub-int/2addr v2, v4

    aget-object v2, p1, v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mScene:Ljava/lang/String;

    .line 171
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, p1, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-object p1, p1, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 173
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mTraceID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScene = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mScene:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mTraceID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleAppFromControlCenter(Landroid/content/Context;)V
    .locals 5

    const-string v0, "e  = "

    const-string v1, "QuickAppRouter"

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mOppoActivityManager:Landroid/app/OppoActivityManager;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Landroid/app/OppoActivityManager;

    invoke-direct {v2}, Landroid/app/OppoActivityManager;-><init>()V

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mOppoActivityManager:Landroid/app/OppoActivityManager;

    .line 188
    :cond_0
    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "com.nearme.instant.platform"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x1

    .line 190
    invoke-virtual {p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppUid:I

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mOppoActivityManager:Landroid/app/OppoActivityManager;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppUid:I

    if-eq p1, v4, :cond_2

    .line 196
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mOppoActivityManager:Landroid/app/OppoActivityManager;

    iget p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppUid:I

    invoke-virtual {p1, v3, p0}, Landroid/app/OppoActivityManager;->handleAppFromControlCenter(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initInstant()V
    .locals 1

    .line 80
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;)V

    invoke-static {v0}, Lcom/nearme/instant/router/Instant;->setStatisticsProvider(Lcom/nearme/instant/router/Instant$IStatisticsProvider;)V

    return-void
.end method

.method private static isFitPltVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 250
    invoke-static {p0, p1}, Lcom/nearme/instant/router/Instant;->isFitPltVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isFitPltVersionStrict(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 254
    invoke-static {p0, p1}, Lcom/nearme/instant/router/Instant;->isFitPltVersionStrict(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isInstantOapsUri(Ljava/lang/String;)Z
    .locals 0

    .line 246
    invoke-static {p0}, Lcom/nearme/instant/router/Instant;->isInstantOapsUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isInstantPlatformInstalled(Landroid/content/Context;)Z
    .locals 0

    .line 242
    invoke-static {p0}, Lcom/nearme/instant/router/Instant;->isInstantPlatformInstalled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$startInstantOaps$0(Lcom/nearme/instant/router/Instant$Builder;Landroid/content/Context;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/nearme/instant/router/Instant$Builder;->build()Lcom/nearme/instant/router/Instant$Req;

    move-result-object p0

    .line 133
    invoke-virtual {p0, p1}, Lcom/nearme/instant/router/Instant$Req;->request(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public startInstantOaps(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;)V
    .locals 2

    .line 103
    invoke-static {p1, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->checkOapsUriValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mQuickAppOpenCallback:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;

    .line 109
    invoke-static {p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->getRealOaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "17"

    const-string v1, "48385cbe621e2de367a01e425bf559bf"

    .line 111
    invoke-static {v0, v1}, Lcom/nearme/instant/router/Instant;->createBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p4}, Lcom/nearme/instant/router/Instant$Builder;->setRequestUrl(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mCallback:Lcom/nearme/instant/router/callback/Callback;

    .line 113
    invoke-virtual {v0, v1}, Lcom/nearme/instant/router/Instant$Builder;->setCallback(Lcom/nearme/instant/router/callback/Callback;)Lcom/nearme/instant/router/Instant$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/nearme/instant/router/Instant$Builder;->signAsPlatform()Lcom/nearme/instant/router/Instant$Builder;

    move-result-object v0

    .line 116
    invoke-direct {p0, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->getTraceIdAndScene(Ljava/lang/String;)V

    .line 117
    iget-object p3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mScene:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->mTraceID:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->buildFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 119
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {v0, p3}, Lcom/nearme/instant/router/Instant$Builder;->setFrom(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->handleAppFromControlCenter(Landroid/content/Context;)V

    const-string p0, "_SWL_=1"

    .line 125
    invoke-virtual {p4, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "swl=1"

    invoke-virtual {p4, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    new-instance p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;

    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;-><init>(Lcom/nearme/instant/router/Instant$Builder;Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-interface {p2, p0, p1, p3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "QuickAppRouter"

    const-string p2, "open quick for unlock"

    .line 126
    invoke-static {p0, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/nearme/instant/router/Instant$Builder;->build()Lcom/nearme/instant/router/Instant$Req;

    move-result-object p0

    .line 128
    invoke-virtual {p0, p1}, Lcom/nearme/instant/router/Instant$Req;->request(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
