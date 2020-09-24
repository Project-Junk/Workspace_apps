.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimListTranslationYListener"
.end annotation


# instance fields
.field private final mListView:Landroid/widget/ListView;

.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1152
    iput-object p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1157
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setTranslationY(F)V

    return-void
.end method
