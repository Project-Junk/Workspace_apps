.class Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AodColorSelectPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field colorView:Landroid/widget/ImageView;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mContext:Landroid/content/Context;

.field private ringDrawable:Landroid/graphics/drawable/Drawable;

.field selectView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 75
    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->mContext:Landroid/content/Context;

    .line 76
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f080559

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 77
    instance-of v0, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 78
    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 80
    :cond_0
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 81
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 82
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    .line 83
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 84
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 85
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0x14

    invoke-virtual {p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 88
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f08055a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->ringDrawable:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0a019f

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->colorView:Landroid/widget/ImageView;

    const p2, 0x7f0a0514

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->selectView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindeView(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->drawCircleView(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;)V

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->colorView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->selectView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->ringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->selectView:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public drawCircleView(Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->getColors()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData$RealmeGradientColor;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    return-void
.end method

.method public updateStatus(Z)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->selectView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setPreviewSignatureColorIndex(I)V

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodColorSelectPreference$ViewHolder;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->notifyDataChange()V

    :cond_1
    return-void
.end method
