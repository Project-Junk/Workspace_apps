.class public Lcom/color/eyeprotect/util/ColorTemperaturePreference;
.super Landroidx/preference/Preference;


# instance fields
.field private a:Lcom/color/eyeprotect/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0b004b

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/c;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/c;->b()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    invoke-virtual {v0}, Lcom/color/eyeprotect/c/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    :cond_0
    const v0, 0x7f080129

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    new-instance v0, Lcom/color/eyeprotect/c/c;

    invoke-virtual {p0}, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/color/eyeprotect/c/c;-><init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    iput-object v0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    iget-object p1, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/util/ColorTemperaturePreference;->a:Lcom/color/eyeprotect/c/c;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/c;->a()V

    :cond_1
    return-void
.end method
