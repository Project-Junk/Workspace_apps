.class Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/hardware/fingerprint/FingerprintManagerWrapper$OpticalFingerprintListenerCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative;->regsiterOpticalFingerprintListener(Landroid/hardware/fingerprint/FingerprintManager;Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;


# direct methods
.method constructor <init>(Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$1;->val$callback:Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpticalFingerprintUpdate(I)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$1;->val$callback:Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-interface {p0, p1}, Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;->onOpticalFingerprintUpdate(I)V

    return-void
.end method
