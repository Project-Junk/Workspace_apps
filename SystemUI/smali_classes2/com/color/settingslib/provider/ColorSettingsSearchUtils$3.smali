.class final Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;
.super Ljava/lang/Object;
.source "ColorSettingsSearchUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->showHightlight(Landroid/widget/ListView;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backgroundColor:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(ILandroid/widget/ListView;I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$position:I

    iput-object p2, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$backgroundColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 227
    iget v0, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$position:I

    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    iget v2, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->val$backgroundColor:I

    invoke-static {v2, v1}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils;->access$200(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    .line 236
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 238
    new-instance v2, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;-><init>(Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
