.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;
.super Landroid/widget/BaseAdapter;
.source "CameraColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;B)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;Ljava/lang/String;)V
    .locals 0

    .line 8174
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0057

    .line 197
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 198
    new-instance p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-direct {p3, v1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/view/View;)V

    .line 199
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;

    .line 1218
    :goto_0
    iget-object v1, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;

    .line 204
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;->setColor(I)V

    .line 205
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/16 v4, 0x8

    if-ltz v1, :cond_3

    .line 2218
    iget-object v1, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->c:Landroid/view/View;

    .line 206
    iget-object v5, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v5}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v5

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3218
    iget-object v0, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;

    .line 207
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I

    move-result v1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;->setAlpha(F)V

    .line 4218
    iget-object p1, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->b:Landroid/widget/ImageView;

    .line 208
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 5218
    :cond_3
    iget-object v1, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->c:Landroid/view/View;

    .line 210
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6218
    iget-object v1, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->b:Landroid/widget/ImageView;

    .line 211
    iget-object v5, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-static {v6}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;

    move-result-object v6

    aget-object p1, v6, p1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v4

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7218
    iget-object p1, p3, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;

    .line 212
    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;

    invoke-virtual {p3}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerItemView;->setAlpha(F)V

    :goto_5
    return-object p2
.end method
