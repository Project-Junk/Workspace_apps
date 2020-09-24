.class public Lcom/android/settings/display/VrDisplayPreferencePicker;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VrDisplayPreferencePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/VrDisplayPreferencePicker$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/display/VrDisplayPreferencePicker$a;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/settings/display/VrDisplayPreferencePicker$a;

    const/4 v3, 0x0

    const v4, 0x7f120814

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/display/VrDisplayPreferencePicker$a;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/android/settings/display/VrDisplayPreferencePicker$a;

    const/4 v3, 0x1

    const v4, 0x7f120815

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/display/VrDisplayPreferencePicker$a;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v2, "vr_display_pref_1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "vr_display_pref_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    const-string/jumbo p1, "vr_display_mode"

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    return v1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->h:I

    invoke-static {v0, p1, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->h:I

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5e462714
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/display/VrDisplayPreferencePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/display/VrDisplayPreferencePicker;->h:I

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vr_display_pref_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x399

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15013a

    return v0
.end method
