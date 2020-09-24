.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;
.super Ljava/lang/Object;
.source "CameraColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/view/View;)V
    .locals 2

    .line 223
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->d:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 225
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0119

    .line 229
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;

    const v0, 0x7f0a0118

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0117

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->c:Landroid/view/View;

    .line 232
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 233
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->c:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
