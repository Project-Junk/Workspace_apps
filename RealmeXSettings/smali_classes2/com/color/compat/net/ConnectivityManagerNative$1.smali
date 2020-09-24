.class final Lcom/color/compat/net/ConnectivityManagerNative$1;
.super Ljava/lang/Object;
.source "ConnectivityManagerNative.java"

# interfaces
.implements Lcom/color/inner/net/ConnectivityManagerWrapper$OnStartTetheringCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/net/ConnectivityManagerNative;->startTethering(Landroid/net/ConnectivityManager;IZLcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;


# direct methods
.method constructor <init>(Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/color/compat/net/ConnectivityManagerNative$1;->val$callback:Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTetheringFailed()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/color/compat/net/ConnectivityManagerNative$1;->val$callback:Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {v0}, Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringFailed()V

    return-void
.end method

.method public final onTetheringStarted()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/color/compat/net/ConnectivityManagerNative$1;->val$callback:Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;

    invoke-interface {v0}, Lcom/color/compat/net/ConnectivityManagerNative$OnStartTetheringCallbackNative;->onTetheringStarted()V

    return-void
.end method
