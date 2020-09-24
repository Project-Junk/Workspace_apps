.class public Lcom/android/settings/gestures/PreventRingingParentPreferenceController;
.super Lcom/android/settings/core/a;
.source "PreventRingingParentPreferenceController.java"


# instance fields
.field final SECURE_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p1, "volume_hush_gesture"

    .line 32
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->SECURE_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_volumeHushGestureEnabled"

    .line 41
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "volume_hush_gesture"

    .line 47
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v0, 0x7f12109c

    goto :goto_0

    :cond_0
    const v0, 0x7f12109a

    goto :goto_0

    :cond_1
    const v0, 0x7f12109e

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
