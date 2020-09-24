.class public final synthetic Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/display/PreviewPagerAdapter;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/PreviewPagerAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;->f$0:Lcom/android/settings/display/PreviewPagerAdapter;

    iput p2, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;->f$1:I

    iput p3, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;->f$2:I

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;->f$0:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;->f$1:I

    iget v2, p0, Lcom/android/settings/display/-$$Lambda$PreviewPagerAdapter$mk--XlZ4z2wncfl0_rxnWhUIqqo;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/display/PreviewPagerAdapter;->lambda$mk--XlZ4z2wncfl0_rxnWhUIqqo(Lcom/android/settings/display/PreviewPagerAdapter;IILandroid/view/ViewStub;Landroid/view/View;)V

    return-void
.end method
