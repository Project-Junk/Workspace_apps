.class Lcom/color/compat/net/wifi/WifiManagerNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/net/wifi/WifiManagerNative;->connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;


# direct methods
.method constructor <init>(Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/net/wifi/WifiManagerNative$1;->val$listener:Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/net/wifi/WifiManagerNative$1;->val$listener:Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0, p1}, Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/net/wifi/WifiManagerNative$1;->val$listener:Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0}, Lcom/color/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onSuccess()V

    return-void
.end method
