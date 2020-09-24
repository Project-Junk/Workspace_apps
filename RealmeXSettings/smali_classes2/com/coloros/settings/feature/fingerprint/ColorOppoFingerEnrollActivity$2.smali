.class Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;
.super Ljava/lang/Object;
.source "ColorOppoFingerEnrollActivity.java"

# interfaces
.implements Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInsideCompleted()V
    .locals 2

    const-string v0, "OppoEnrollActivity"

    const-string v1, "onInsideCompleted"

    .line 418
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1100(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    .line 420
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1200(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    return-void
.end method

.method public onOutsideCompleted()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1100(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    return-void
.end method
