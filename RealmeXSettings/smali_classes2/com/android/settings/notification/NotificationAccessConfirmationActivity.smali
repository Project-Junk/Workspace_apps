.class public Lcom/android/settings/notification/NotificationAccessConfirmationActivity;
.super Landroid/app/Activity;
.source "NotificationAccessConfirmationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:I

.field private b:Landroid/content/ComponentName;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->cancel()V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "NotificationAccessConfirmationActivity"

    const-string p2, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 1100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->b:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 1101
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " lacks permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->c:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->b:Landroid/content/ComponentName;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    return-void

    :catch_0
    move-exception p2

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get service info for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic lambda$9iSRlgKvhGkvCF8QNpijG9Axb3c(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$rXvElSfH1hu-qa86b9KsPsu2NOo(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->finish()V

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchPopulateAccessibilityEvent(Landroid/app/Activity;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "notification"

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->c:Landroid/app/NotificationManager;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "component_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->b:Landroid/content/ComponentName;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "user_id"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->a:I

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "package_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 65
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v4, 0x7f120ec8

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const p1, 0x7f120ec7

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const p1, 0x7f12013d

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    new-instance p1, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$9iSRlgKvhGkvCF8QNpijG9Axb3c;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$9iSRlgKvhGkvCF8QNpijG9Axb3c;-><init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;)V

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const p1, 0x7f120758

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 74
    new-instance p1, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$rXvElSfH1hu-qa86b9KsPsu2NOo;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessConfirmationActivity$rXvElSfH1hu-qa86b9KsPsu2NOo;-><init>(Lcom/android/settings/notification/NotificationAccessConfirmationActivity;)V

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p0, p1}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object p1

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessConfirmationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
