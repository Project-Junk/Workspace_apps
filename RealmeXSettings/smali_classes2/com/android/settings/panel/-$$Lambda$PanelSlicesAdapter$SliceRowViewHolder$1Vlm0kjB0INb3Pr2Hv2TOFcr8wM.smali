.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$1Vlm0kjB0INb3Pr2Hv2TOFcr8wM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/slice/widget/SliceView$OnSliceActionListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

.field private final synthetic f$1:Landroidx/lifecycle/LiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/lifecycle/LiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$1Vlm0kjB0INb3Pr2Hv2TOFcr8wM;->f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iput-object p2, p0, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$1Vlm0kjB0INb3Pr2Hv2TOFcr8wM;->f$1:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$1Vlm0kjB0INb3Pr2Hv2TOFcr8wM;->f$0:Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;

    iget-object v1, p0, Lcom/android/settings/panel/-$$Lambda$PanelSlicesAdapter$SliceRowViewHolder$1Vlm0kjB0INb3Pr2Hv2TOFcr8wM;->f$1:Landroidx/lifecycle/LiveData;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->lambda$1Vlm0kjB0INb3Pr2Hv2TOFcr8wM(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/lifecycle/LiveData;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method
