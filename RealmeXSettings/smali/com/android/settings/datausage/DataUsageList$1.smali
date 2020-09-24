.class final Lcom/android/settings/datausage/DataUsageList$1;
.super Lcom/android/settings/datausage/CellDataPreference$a;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$1;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList$1;->a:Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataUsageList;->c()V

    return-void
.end method
