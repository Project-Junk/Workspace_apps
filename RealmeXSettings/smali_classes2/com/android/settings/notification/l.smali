.class public abstract Lcom/android/settings/notification/l;
.super Lcom/android/settingslib/core/a;
.source "NotificationPreferenceController.java"


# instance fields
.field protected a:Landroid/app/NotificationChannel;

.field protected b:Landroid/app/NotificationChannelGroup;

.field protected c:Lcom/android/settingslib/g$a;

.field protected d:Lcom/android/settings/notification/k$a;

.field protected final e:Landroid/app/NotificationManager;

.field protected final f:Lcom/android/settings/notification/k;

.field protected final g:Landroid/content/Context;

.field protected final h:Landroid/os/UserManager;

.field protected final i:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/android/settings/notification/l;->g:Landroid/content/Context;

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/l;->g:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/l;->e:Landroid/app/NotificationManager;

    .line 60
    iput-object p2, p0, Lcom/android/settings/notification/l;->f:Lcom/android/settings/notification/k;

    .line 61
    iget-object p1, p0, Lcom/android/settings/notification/l;->g:Landroid/content/Context;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/notification/l;->h:Landroid/os/UserManager;

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/l;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/l;->i:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    iget v1, v1, Lcom/android/settings/notification/k$a;->b:I

    iget-object v2, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/g$a;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    .line 91
    iput-object p2, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    .line 92
    iput-object p3, p0, Lcom/android/settings/notification/l;->b:Landroid/app/NotificationChannelGroup;

    .line 93
    iput-object p4, p0, Lcom/android/settings/notification/l;->c:Lcom/android/settingslib/g$a;

    return-void
.end method

.method protected final a(I)Z
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ChannelPrefContr"

    const-string v0, "No channel"

    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v2, -0x3e8

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    if-lt v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method protected final b()Z
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    .line 118
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    .line 123
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    .line 119
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method protected final c()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/l;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_1

    .line 130
    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/l;->b:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/l;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/l;->d:Lcom/android/settings/notification/k$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->f:Z

    if-eqz v0, :cond_1

    return v1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/l;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/l;->a:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method
