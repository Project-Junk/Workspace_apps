.class final Lcom/android/settings/gestures/c$a;
.super Landroid/database/ContentObserver;
.source "PreventRingingSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/gestures/c;

.field private final b:Landroid/net/Uri;

.field private final c:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/gestures/c;Landroidx/preference/Preference;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/gestures/c$a;->a:Lcom/android/settings/gestures/c;

    .line 125
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "volume_hush_gesture"

    .line 119
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/c$a;->b:Landroid/net/Uri;

    .line 126
    iput-object p2, p0, Lcom/android/settings/gestures/c$a;->c:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/settings/gestures/c$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/c$a;->a:Lcom/android/settings/gestures/c;

    iget-object p2, p0, Lcom/android/settings/gestures/c$a;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/gestures/c;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
