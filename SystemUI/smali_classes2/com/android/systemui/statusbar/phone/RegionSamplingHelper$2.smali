.class Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->access$300(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->access$300(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->access$400(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/view/ViewTreeObserver$OnDrawListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
