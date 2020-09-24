.class public Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;
.super Ljava/lang/Object;
.source "KeyguardCrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$InnerClass;
    }
.end annotation


# static fields
.field private static final COUNT_TIME_INTERVAL:I = 0xea60

.field private static final CRASH_KEY_NAME:Ljava/lang/String; = "crash_time"

.field private static final CRASH_TIME_STAMP:Ljava/lang/String; = "crash_time_stamp"

.field private static final MAX_CRASH_TIME:I = 0xa

.field private static final SP_FILE_NAME:Ljava/lang/String; = "keyguard_crash"

.field private static final TAG:Ljava/lang/String; = "KeyguardCrashHandler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;
    .locals 1

    .line 43
    invoke-static {}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler$InnerClass;->access$100()Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 2

    const/4 p0, 0x0

    const-string v0, "keyguard_crash"

    .line 72
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "crash_time"

    .line 74
    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p0, "crash_time_stamp"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public countCrashTimes(Landroid/content/Context;)V
    .locals 9

    .line 47
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "keyguard_crash"

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "crash_time_stamp"

    .line 52
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0xea60

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    const-string v5, "crash_time"

    .line 55
    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "countCrashTimes lastCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyguardCrashHandler"

    invoke-static {v7, v6}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 58
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->recoverToDefaultKeyguardSettings(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;->clear(Landroid/content/Context;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-interface {p0, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/KeyguardCrashHandler;->clear(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
