.class Lcom/color/compat/app/ActivityManagerNative$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/inner/app/ActivityManagerWrapper$IPackageDataObserverWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;


# direct methods
.method constructor <init>(Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;)V
    .locals 0

    iput-object p1, p0, Lcom/color/compat/app/ActivityManagerNative$2;->val$observer:Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/color/compat/app/ActivityManagerNative$2;->val$observer:Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;

    invoke-interface {p0, p1, p2}, Lcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;->onRemoveCompleted(Ljava/lang/String;Z)V

    return-void
.end method
