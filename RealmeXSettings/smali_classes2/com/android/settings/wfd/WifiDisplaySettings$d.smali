.class final Lcom/android/settings/wfd/WifiDisplaySettings$d;
.super Lcom/android/settings/wfd/WifiDisplaySettings$a;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/android/settings/wfd/WifiDisplaySettings;

.field private final c:Landroid/hardware/display/WifiDisplay;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$d;->b:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 712
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wfd/WifiDisplaySettings$a;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 714
    iput-object p4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$d;->c:Landroid/hardware/display/WifiDisplay;

    const p1, 0x7f0d03a4

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$d;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 720
    invoke-super {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$a;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01ed

    .line 722
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$d;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 729
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 730
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 737
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$d;->b:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$d;->c:Landroid/hardware/display/WifiDisplay;

    invoke-static {p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method
