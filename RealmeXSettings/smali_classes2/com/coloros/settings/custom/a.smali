.class public final Lcom/coloros/settings/custom/a;
.super Ljava/lang/Object;
.source "CustomPolicyManager.java"


# static fields
.field private static final a:Z

.field private static b:Lcom/coloros/settings/custom/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/coloros/settings/a;->o:Z

    sput-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coloros/settings/custom/a;
    .locals 1

    .line 32
    sget-object v0, Lcom/coloros/settings/custom/a;->b:Lcom/coloros/settings/custom/a;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/coloros/settings/custom/a;

    invoke-direct {v0}, Lcom/coloros/settings/custom/a;-><init>()V

    sput-object v0, Lcom/coloros/settings/custom/a;->b:Lcom/coloros/settings/custom/a;

    .line 35
    :cond_0
    sget-object v0, Lcom/coloros/settings/custom/a;->b:Lcom/coloros/settings/custom/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "PolicyManager"

    if-nez p0, :cond_0

    const-string p0, "setForceFingerEnrolling context is null"

    .line 48
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    sget-boolean v1, Lcom/coloros/settings/custom/a;->a:Z

    if-nez v1, :cond_1

    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 55
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "is_mdm_enforce_finger_enrolling"

    .line 54
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "put is_mdm_enforce_finger_enrolling "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "PolicyManager"

    if-nez p0, :cond_0

    const-string p0, "setForcePasswordEnrolling context is null"

    .line 61
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    sget-boolean v1, Lcom/coloros/settings/custom/a;->a:Z

    if-nez v1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 68
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "is_mdm_enforce_password_enrolling"

    .line 67
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "put is_mdm_enforce_password_enrolling "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 3

    .line 39
    sget-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static c()Z
    .locals 3

    .line 98
    sget-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->g()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public static d()Z
    .locals 2

    .line 105
    sget-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->g()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static e()Z
    .locals 3

    .line 112
    sget-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 115
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static f()Z
    .locals 3

    .line 119
    sget-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->g()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static g()I
    .locals 3

    .line 89
    sget-boolean v0, Lcom/coloros/settings/custom/a;->a:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oppo_custom_settings_policy_user_password"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "=====getUserPasswordPolicies========:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PolicyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
