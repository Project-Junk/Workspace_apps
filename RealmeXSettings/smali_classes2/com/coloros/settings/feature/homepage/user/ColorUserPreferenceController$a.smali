.class final Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;
.super Landroid/os/Handler;
.source "ColorUserPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V
    .locals 1

    .line 383
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 384
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;B)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;-><init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 449
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "accountName"

    .line 450
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "ColorUserPreferenceController"

    const-string v1, "json data is invalid "

    .line 453
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    const-string v1, "ColorUserPreferenceController"

    if-nez v0, :cond_0

    const-string p1, "updateUserInfoUi activity is null\uff0creturn"

    .line 403
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$600(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "updateUserInfoUi: UserCenterPreference is null"

    .line 407
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 410
    :cond_1
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$600(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;

    move-result-object v1

    .line 412
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v2, "USER_PROFILE_AVATAR_FILE_URI"

    .line 414
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USER_PROFILE_FULLNAME"

    .line 415
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "USER_PROFILE_JSON"

    .line 416
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$200(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Z

    move-result v4

    .line 419
    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->b:Ljava/lang/String;

    .line 425
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->b:Ljava/lang/String;

    invoke-static {v0, v3, p1, v2}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$700(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 426
    invoke-static {v0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$802(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Z)Z

    .line 427
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 428
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 431
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$900(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v3, 0x7f121864

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 433
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 434
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 437
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 438
    invoke-static {v0, v2}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$1000(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;Ljava/lang/String;)V

    return-void

    .line 440
    :cond_5
    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$1100(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0809d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/homepage/user/UserCenterPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 389
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage msg:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorUserPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->a(Landroid/os/Message;)V

    return-void

    .line 395
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;->a(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
