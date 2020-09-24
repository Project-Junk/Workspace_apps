.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;
.super Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;
.source "AodAlignTypeSelectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mItem:[Landroid/view/View;

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->initLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 1

    const v0, 0x7f0d0032

    .line 46
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 51
    invoke-super {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodBasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x6

    .line 52
    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0612

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0611

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0613

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a02ba

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a02b9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a02bb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 59
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p1, v2

    .line 60
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getPreviewAlignType()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mSelectedItem:I

    .line 63
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mSelectedItem:I

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->updateSelctedView(Landroid/view/View;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 69
    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setPreviewAlignType(I)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->notifyDataChange()V

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mSelectedItem:I

    aget-object p1, p1, v2

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->updateSelctedView(Landroid/view/View;Z)V

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mItem:[Landroid/view/View;

    aget-object p1, p1, v1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->updateSelctedView(Landroid/view/View;Z)V

    .line 74
    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->mSelectedItem:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateSelctedView(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080484

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 84
    check-cast p1, Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f06002f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080483

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 91
    check-cast p1, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/preference/AodAlignTypeSelectPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f060030

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method
