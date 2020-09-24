.class Lcom/color/compat/app/ActivityManagerNative$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/app/ActivityManagerWrapper$IProcessObserverWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/app/ActivityManagerNative;->registerProcessObserver(Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$processObserverNative:Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;


# direct methods
.method constructor <init>(Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/app/ActivityManagerNative$3;->val$processObserverNative:Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/app/ActivityManagerNative$3;->val$processObserverNative:Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;

    invoke-interface {p0, p1, p2, p3}, Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/app/ActivityManagerNative$3;->val$processObserverNative:Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;

    invoke-interface {p0, p1, p2, p3}, Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;->onForegroundServicesChanged(III)V

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/app/ActivityManagerNative$3;->val$processObserverNative:Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;

    invoke-interface {p0, p1, p2}, Lcom/color/compat/app/ActivityManagerNative$IProcessObserverNative;->onProcessDied(II)V

    return-void
.end method
