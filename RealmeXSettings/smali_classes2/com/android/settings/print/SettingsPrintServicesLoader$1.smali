.class final Lcom/android/settings/print/SettingsPrintServicesLoader$1;
.super Landroid/print/PrintServicesLoader;
.source "SettingsPrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/SettingsPrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/print/SettingsPrintServicesLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/print/SettingsPrintServicesLoader;Landroid/print/PrintManager;Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/print/SettingsPrintServicesLoader$1;->a:Lcom/android/settings/print/SettingsPrintServicesLoader;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p3, p1}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 1

    .line 42
    check-cast p1, Ljava/util/List;

    .line 1045
    invoke-super {p0, p1}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/android/settings/print/SettingsPrintServicesLoader$1;->a:Lcom/android/settings/print/SettingsPrintServicesLoader;

    invoke-virtual {v0, p1}, Lcom/android/settings/print/SettingsPrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method
