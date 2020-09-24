.class final Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;
.super Landroid/database/ContentObserver;
.source "BadgingNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BadgingNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/BadgingNotificationPreferenceController;

.field private final b:Landroid/net/Uri;

.field private final c:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/BadgingNotificationPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->a:Lcom/android/settings/notification/BadgingNotificationPreferenceController;

    .line 111
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "notification_badging"

    .line 106
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->b:Landroid/net/Uri;

    .line 112
    iput-object p2, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->c:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->a:Lcom/android/settings/notification/BadgingNotificationPreferenceController;

    iget-object p2, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
