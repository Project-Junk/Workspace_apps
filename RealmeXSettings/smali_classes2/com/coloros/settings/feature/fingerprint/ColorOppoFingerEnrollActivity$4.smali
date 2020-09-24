.class Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;
.super Ljava/lang/Object;
.source "ColorOppoFingerEnrollActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;
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

    .line 510
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 514
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1500(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1600(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 515
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$1700(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    :cond_0
    return p2
.end method
