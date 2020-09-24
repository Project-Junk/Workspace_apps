.class public final Lcom/coloros/partners/dirac/a/c;
.super Ljava/lang/Object;
.source "RecoveryDiracUtils.java"


# instance fields
.field public a:Lcom/oppo/a/a/a/c;

.field protected b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/coloros/partners/dirac/a/c$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/a/c$1;-><init>(Lcom/coloros/partners/dirac/a/c;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/a/c;->b:Landroid/content/ServiceConnection;

    .line 51
    iput-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doOnServiceConnected, name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mService = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoveryDiracUtils"

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "doOnServiceConnected, mContext is null"

    .line 97
    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    invoke-static {p2}, Lcom/oppo/a/a/a/c$a;->a(Landroid/os/IBinder;)Lcom/oppo/a/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    .line 101
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p1, p2, v1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z[I)V

    .line 107
    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    const-string v1, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    invoke-static {p1, p2, v1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;ZLjava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "global_dirac"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1115
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resetParameter, mService="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1117
    :try_start_0
    iget-object p2, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    if-eqz p2, :cond_3

    .line 1118
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1119
    iget-object p2, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    const-string v1, "dirac_effect_mode"

    const-string v2, "0"

    invoke-interface {p2, v1, v2}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object p2, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    const-string v1, "dirac_scene_mode"

    sget-object v2, Lcom/oppo/a/a/a/b$a;->e:Lcom/oppo/a/a/a/b$a;

    invoke-virtual {v2}, Lcom/oppo/a/a/a/b$a;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_2
    iget-object p2, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    const-string v1, "dirac_reset_parameter"

    invoke-interface {p2, v1, p1}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "resetParameter fail! "

    .line 1125
    invoke-static {v0, v1, p2}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_3
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " we have resetParameter, now unbind "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "unBindEffectService, mService="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object p2, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    if-nez p2, :cond_4

    const-string p1, "unBindEffectService, mContext is null"

    .line 2085
    invoke-static {v0, p1}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2088
    :cond_4
    iget-object v0, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_5

    .line 2089
    iget-object v0, p0, Lcom/coloros/partners/dirac/a/c;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2090
    iput-object p1, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final a()Z
    .locals 5

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindEffectService, mService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dirac/a/c;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoveryDiracUtils"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "bindEffectService, mContext is null"

    .line 1063
    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1066
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1067
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oppo.diraceffect.controlservice.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1068
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1069
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    goto :goto_0

    .line 1073
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1074
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1075
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1076
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1078
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1079
    iget-object v1, p0, Lcom/coloros/partners/dirac/a/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/partners/dirac/a/c;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "bindEffectService, return not found receiver."

    .line 1070
    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method
