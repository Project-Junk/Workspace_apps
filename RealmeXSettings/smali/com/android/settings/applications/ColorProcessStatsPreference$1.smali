.class final Lcom/android/settings/applications/ColorProcessStatsPreference$1;
.super Ljava/lang/Object;
.source "ColorProcessStatsPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ColorProcessStatsPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/android/settings/applications/ColorProcessStatsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ColorProcessStatsPreference;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->d:Lcom/android/settings/applications/ColorProcessStatsPreference;

    iput-object p2, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->d:Lcom/android/settings/applications/ColorProcessStatsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ColorProcessStatsPreference;->a(Lcom/android/settings/applications/ColorProcessStatsPreference;)D

    move-result-wide v1

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 111
    iget-object v1, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 112
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/android/settings/applications/ColorProcessStatsPreference$1;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
