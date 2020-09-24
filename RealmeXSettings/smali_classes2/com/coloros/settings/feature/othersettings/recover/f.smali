.class public final Lcom/coloros/settings/feature/othersettings/recover/f;
.super Ljava/lang/Object;
.source "RecoveryDataHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/recover/f$c;,
        Lcom/coloros/settings/feature/othersettings/recover/f$b;,
        Lcom/coloros/settings/feature/othersettings/recover/f$d;,
        Lcom/coloros/settings/feature/othersettings/recover/f$a;,
        Lcom/coloros/settings/feature/othersettings/recover/f$e;,
        Lcom/coloros/settings/feature/othersettings/recover/f$f;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/othersettings/recover/f$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

.field b:Z

.field c:Landroid/content/Context;

.field d:Landroid/app/Activity;

.field private e:Lcom/coloros/settings/feature/zenmode/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    sput-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.oppoguardelf.RecoverySettingsService"

    const-string v3, "com.coloros.oppoguardelf"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.heytap.pictorial.RecoverySettingsService"

    const-string v3, "com.heytap.pictorial"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.simsettings.RecoverySettingsService"

    const-string v3, "com.coloros.simsettings"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v3, "com.android.phone"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.android.phone.RecoverySettingsService"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.wirelesssettings.RecoverySettingsService"

    const-string v3, "com.coloros.wirelesssettings"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.floatassistant.RecoverySettingsService"

    const-string v3, "com.coloros.floatassistant"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.smartdrive.RecoverySettingsService"

    const-string v3, "com.coloros.smartdrive"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.flashnote.RecoverySettingsService"

    const-string v3, "com.coloros.flashnote"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.recoverysettings.RecoverySettingsService"

    const-string v3, "com.android.systemui"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.karaoke.RecoverySettingsService"

    const-string v3, "com.coloros.karaoke"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.oppo.launcher.RecoverySettingsService"

    const-string v3, "com.oppo.launcher"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.screenrecorder.RecorderRecoverySettingsService"

    const-string v3, "com.coloros.screenrecorder"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.color.eyeprotect.RecoverySettingsService"

    const-string v3, "com.color.eyeprotect"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.uxdesign.RecoverySettingsService"

    const-string v3, "com.coloros.uxdesign"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    const-string v2, "com.coloros.smartsidebar.RecoverySettingsService"

    const-string v3, "com.coloros.smartsidebar"

    invoke-direct {v1, v2, v3}, Lcom/coloros/settings/feature/othersettings/recover/f$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    .line 191
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->d:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/recover/f;)Landroid/content/Context;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->a:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 7

    .line 220
    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, ";"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/google/b/f;

    invoke-direct {v1}, Lcom/google/b/f;-><init>()V

    .line 232
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 233
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "oppo.video.beauty."

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 234
    invoke-static {v4, v5}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    :try_start_0
    const-class v6, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    invoke-virtual {v1, v5, v6}, Lcom/google/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;

    const-string v6, "0"

    .line 237
    invoke-virtual {v5, v6}, Lcom/coloros/settings/feature/othersettings/videobeauty/VideoBeautyParam;->setIsOpen(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v5}, Lcom/google/b/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occur, e = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecoveryDataHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 244
    invoke-static {p0, v0}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/recover/f;I)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/feature/othersettings/recover/f$d;)Z
    .locals 2

    .line 1014
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1015
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    new-instance p1, Lcom/coloros/settings/feature/othersettings/recover/f$b;

    invoke-direct {p1, p0, p3}, Lcom/coloros/settings/feature/othersettings/recover/f$b;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/recover/f$d;)V

    const/4 p2, 0x1

    .line 1019
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2132
    iget-object p2, p1, Lcom/coloros/settings/feature/othersettings/recover/f$b;->a:Ljava/util/Timer;

    new-instance p3, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;

    invoke-direct {p3, p1}, Lcom/coloros/settings/feature/othersettings/recover/f$b$2;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f$b;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1024
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error occur, e = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoveryDataHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0
.end method

.method static d(Landroid/content/Context;)V
    .locals 4

    const-string v0, "RecoveryDataHelper"

    .line 1047
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "ring_vibration_intensity"

    .line 1049
    invoke-static {p0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1052
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v3, "touch_vibration_intensity"

    .line 1055
    invoke-static {p0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1058
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    const-string v3, "common_vibration_intensity"

    .line 1061
    invoke-static {p0, v3, v2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 1064
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 5

    .line 976
    :goto_0
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 979
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 980
    sget-object v0, Lcom/coloros/settings/feature/othersettings/recover/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/recover/f$f;

    .line 981
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/f$f;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/recover/f$f;->b:Ljava/lang/String;

    new-instance v4, Lcom/coloros/settings/feature/othersettings/recover/f$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/f$1;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f;Lcom/coloros/settings/feature/othersettings/recover/f$f;I)V

    invoke-static {v1, v2, v3, v4}, Lcom/coloros/settings/feature/othersettings/recover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/feature/othersettings/recover/f$d;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/recover/f$f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : init bind fail"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoveryDataHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1001
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->b:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 1002
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->b:Z

    .line 1003
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/f;->a()V

    .line 1004
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const v0, 0x7f120f5b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1073
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/f$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/f$a;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f;)V

    const-string v1, "activity"

    .line 1075
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 1076
    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p1

    return p1
.end method

.method final b(Landroid/content/Context;)V
    .locals 10

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->e:Lcom/coloros/settings/feature/zenmode/b;

    .line 325
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "no_media"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 326
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v3, 0x1

    const-string v4, "zen_suppressed_effect_key_gard"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 327
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v4, "zen_suppressed_effect_curved_dispaly"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 329
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->e:Lcom/coloros/settings/feature/zenmode/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/b;->c()V

    .line 331
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 335
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 343
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    iget-object v5, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->e:Lcom/coloros/settings/feature/zenmode/b;

    invoke-virtual {v5, v4}, Lcom/coloros/settings/feature/zenmode/b;->b(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1401
    :cond_0
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 1402
    sget-object v1, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v1, 0x16

    .line 1403
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v1, 0x7

    .line 1404
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 1405
    new-instance v1, Lcom/android/settings/notification/y;

    invoke-direct {v1}, Lcom/android/settings/notification/y;-><init>()V

    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 1406
    iput-object v2, v1, Lcom/android/settings/notification/y;->c:Ljava/lang/String;

    .line 1407
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const v4, 0x7f121bbe

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/y;->b:Ljava/lang/String;

    .line 1408
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getEventConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/y;->a:Ljava/lang/String;

    .line 1409
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    .line 1410
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    .line 1411
    iput-boolean v3, v1, Lcom/android/settings/notification/y;->g:Z

    .line 369
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    const v3, 0x7f121b2d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    iget-object v7, v1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 373
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->e:Lcom/coloros/settings/feature/zenmode/b;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/zenmode/b;->a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->e:Lcom/coloros/settings/feature/zenmode/b;

    invoke-virtual {v2, v1, v0}, Lcom/coloros/settings/feature/zenmode/b;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 381
    iget v2, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 382
    iget v2, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, -0x2

    and-int/lit8 v1, v1, -0x3

    and-int/lit8 v1, v1, -0x5

    or-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, -0x11

    and-int/lit16 v2, v2, -0x101

    or-int/lit8 v2, v2, 0x20

    or-int/lit8 v2, v2, 0x40

    or-int/lit8 v2, v2, 0x10

    .line 394
    new-instance v3, Landroid/app/NotificationManager$Policy;

    const/4 v4, 0x2

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-direct {v3, v1, v4, v0, v2}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 396
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    :cond_2
    return-void
.end method

.method final c(Landroid/content/Context;)V
    .locals 9

    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "settings_install_authentication"

    .line 750
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "settings_install_authentication_frequency"

    .line 753
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "oppo_apk_prescan_switch"

    .line 756
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    const-string v3, "show_password"

    .line 760
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "install_non_market_apps"

    .line 762
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "device_policy"

    .line 765
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 767
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 769
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    .line 770
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 776
    :cond_0
    new-instance v3, Lcom/coloros/settings/feature/othersettings/recover/f$e;

    invoke-direct {v3, p0, v1}, Lcom/coloros/settings/feature/othersettings/recover/f$e;-><init>(Lcom/coloros/settings/feature/othersettings/recover/f;B)V

    new-array v4, v1, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/coloros/settings/feature/othersettings/recover/f$e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x3

    const-string v4, "location_mode"

    .line 780
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "oppo_cta_user_experience"

    .line 783
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "lock_to_app_enabled"

    .line 786
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "lock_to_app_exit_locked"

    .line 787
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    invoke-static {}, Lcom/coloros/settings/utils/al;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "12"

    goto :goto_1

    :cond_1
    const-string v3, "24"

    :goto_1
    const-string v4, "time_12_24"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 791
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    .line 792
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "auto_time_zone"

    .line 795
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "auto_time"

    .line 796
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 797
    sget-boolean v3, Lcom/coloros/settings/a;->a:Z

    if-nez v3, :cond_2

    const-string v3, "alarm"

    .line 799
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    const-string v4, "Asia/Shanghai"

    .line 800
    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 804
    :cond_2
    invoke-static {}, Lcom/coloros/settings/utils/br;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 805
    invoke-static {p1}, Lcom/coloros/settings/utils/br;->c(Landroid/content/Context;)Z

    .line 810
    :cond_3
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    .line 812
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 814
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    .line 815
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 816
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 817
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-static {p1, v7, v1}, Lcom/android/settingslib/a/a;->a(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "accessibility_captioning_enabled"

    .line 823
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, ""

    const-string v4, "accessibility_captioning_locale"

    .line 825
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_font_scale"

    .line 827
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_preset"

    .line 828
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_typeface"

    .line 830
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_foreground_color"

    .line 831
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 833
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_edge_type"

    .line 835
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_edge_color"

    .line 837
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_background_color"

    .line 838
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 840
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "accessibility_captioning_window_color"

    .line 842
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 844
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "accessibility_shortcut_enabled"

    .line 847
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "accessibility_display_magnification_enabled"

    .line 849
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "incall_power_button_behavior"

    .line 852
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "speak_password"

    .line 855
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 857
    new-instance v3, Landroid/speech/tts/TtsEngines;

    invoke-direct {v3, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 858
    invoke-virtual {v3}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v4

    .line 859
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 860
    iget-object v6, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    const-string v7, "com.svox.pico"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hide engine.name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RecoveryDataHelper"

    invoke-static {v6, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 863
    :cond_5
    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_3

    :cond_6
    const/16 v3, 0x64

    const-string v4, "tts_default_rate"

    .line 868
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v3, 0x190

    const-string v4, "long_press_timeout"

    .line 871
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 874
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.oppo.action_dissable_development"

    .line 875
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    .line 876
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v3, "development"

    .line 879
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    .line 880
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 882
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_density_forced"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 883
    invoke-static {p1, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;ZZ)V

    .line 887
    :cond_7
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "allow_resizeable_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 888
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/recover/f;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "double_finger_split_screen_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "persist.vendor.otg.switch"

    const-string v4, "false"

    .line 890
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sys.oppo.otg_support"

    .line 891
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 894
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->af(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v3, v2

    const-string v4, "security_window"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 896
    sget-boolean v3, Lcom/coloros/settings/a;->a:Z

    if-nez v3, :cond_8

    const-string v3, "tao_password_field"

    .line 897
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    const-string v3, "disable_assistant_screen"

    .line 900
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 902
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "disable_google_asssist_power_wakeup"

    .line 903
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 907
    :cond_9
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 908
    invoke-static {p1}, Lcom/coloros/settings/feature/weather/module/city/d;->c(Landroid/content/Context;)V

    .line 909
    sget p1, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a:I

    const-string v3, "enable_dual_clock_switch"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "enable_dual_clock_screen_clock_switch"

    .line 912
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "enable_dual_clock_clock_widget_switch"

    .line 915
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 920
    :cond_a
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_b

    .line 921
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1228
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/f;->a()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
