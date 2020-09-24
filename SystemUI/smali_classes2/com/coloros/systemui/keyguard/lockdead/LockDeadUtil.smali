.class public final Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;
.super Ljava/lang/Object;
.source "LockDeadUtil.java"


# static fields
.field private static final LOCK_DEAD_STATE:Ljava/lang/String; = "lock_dead_state"

.field private static final SETTINGS_FIND_PHONE_LEAVE_NUM:Ljava/lang/String; = "find_phone_leave_num"

.field private static sIsLockDeadState:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLockDeadState(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lock_dead_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 30
    sput-boolean v0, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->sIsLockDeadState:Z

    return-void
.end method

.method public static getLockDeadPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "find_phone_leave_num"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLockDeadState()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->sIsLockDeadState:Z

    return v0
.end method

.method public static updateLockDeadState(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lock_dead_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->sIsLockDeadState:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 37
    :catch_0
    sput-boolean v0, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->sIsLockDeadState:Z

    :goto_1
    return-void
.end method
