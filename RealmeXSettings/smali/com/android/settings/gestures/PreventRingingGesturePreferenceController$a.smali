.class final Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;
.super Landroid/database/ContentObserver;
.source "PreventRingingGesturePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final synthetic b:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;

.field private final c:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->b:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;

    .line 208
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "volume_hush_gesture"

    .line 202
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->a:Landroid/net/Uri;

    .line 209
    iput-object p2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->c:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 223
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->b:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;

    iget-object p2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$a;->c:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
