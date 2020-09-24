.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$bSHd3_TN7jijcKsqkephtQ06j0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$bSHd3_TN7jijcKsqkephtQ06j0E;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$StorageDashboardFragment$IconLoaderCallbacks$bSHd3_TN7jijcKsqkephtQ06j0E;->f$0:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/settingslib/core/a;

    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$bSHd3_TN7jijcKsqkephtQ06j0E(Landroid/util/SparseArray;Lcom/android/settingslib/core/a;)V

    return-void
.end method
