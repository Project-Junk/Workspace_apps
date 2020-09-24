.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$NPsHcaygoxTH6FkU6qBr5AeAsHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;

.field private final synthetic f$1:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$NPsHcaygoxTH6FkU6qBr5AeAsHM;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$NPsHcaygoxTH6FkU6qBr5AeAsHM;->f$1:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$NPsHcaygoxTH6FkU6qBr5AeAsHM;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$NPsHcaygoxTH6FkU6qBr5AeAsHM;->f$1:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$2$DividerView(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method
