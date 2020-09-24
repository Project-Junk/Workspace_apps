.class final Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$UIHandler;
.super Lcom/coloros/settings/utils/be;
.source "ColorOppoFingerEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final handleMessage(Landroid/os/Message;Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 171
    invoke-static {p2, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->access$000(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Landroid/os/Message;)V

    return-void
.end method

.method public final bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 163
    check-cast p2, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$UIHandler;->handleMessage(Landroid/os/Message;Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    return-void
.end method
