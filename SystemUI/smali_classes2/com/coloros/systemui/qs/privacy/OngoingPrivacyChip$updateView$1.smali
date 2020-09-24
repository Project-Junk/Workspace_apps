.class final Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OngoingPrivacyChip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;",
        "Landroid/view/ViewGroup;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOngoingPrivacyChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OngoingPrivacyChip.kt\ncom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,189:1\n1591#2,3:190\n1591#2,3:193\n*E\n*S KotlinDebug\n*F\n+ 1 OngoingPrivacyChip.kt\ncom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1\n*L\n125#1,3:190\n141#1,3:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "setIcons",
        "",
        "dialogBuilder",
        "Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;",
        "iconsContainer",
        "Landroid/view/ViewGroup;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->invoke(Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;Landroid/view/ViewGroup;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;Landroid/view/ViewGroup;)V
    .locals 8
    .param p1    # Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialogBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconsContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 124
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 125
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->generateIcons()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 191
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v4, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v4}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconColor$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 128
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-virtual {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getBackgroundDrawable$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 133
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconSize$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v5

    iget-object v6, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v6}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconSize$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v6

    invoke-virtual {p2, v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    iget-object v2, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-virtual {v2}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->getExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v2}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconMarginExpanded$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v2}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconMarginCollapsed$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 137
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 135
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    move v2, v3

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/privacy/PrivacyDialogBuilder;->generateIcons()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 194
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v4, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v4}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getColorosIconColor$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 144
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-virtual {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 145
    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getBackgroundDrawable$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v0}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getSidePadding$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v0

    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getSidePadding$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v5

    iget-object v6, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v6}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getSidePadding$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v6

    iget-object v7, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v7}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getSidePadding$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 150
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    iget-object v5, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v5}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconSize$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v5

    iget-object v6, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v6}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconSize$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v6

    invoke-virtual {p2, v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    if-eqz v2, :cond_7

    .line 152
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    iget-object v2, p0, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip$updateView$1;->this$0:Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;

    invoke-static {v2}, Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;->access$getIconMarginStart$p(Lcom/coloros/systemui/qs/privacy/OngoingPrivacyChip;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 154
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 152
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    move v2, v3

    goto/16 :goto_3

    :cond_8
    return-void
.end method
