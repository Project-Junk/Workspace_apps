.class final Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "LockScreenNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/LockScreenNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->a:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    .line 349
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "lock_screen_allow_private_notifications"

    .line 344
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->b:Landroid/net/Uri;

    const-string p1, "lock_screen_show_notifications"

    .line 346
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 354
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    iget-object p2, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 357
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 363
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 364
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->a:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    .line 366
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->a:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->b(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)I

    move-result p1

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_1

    .line 367
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$a;->a:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->c(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V

    :cond_1
    return-void
.end method
