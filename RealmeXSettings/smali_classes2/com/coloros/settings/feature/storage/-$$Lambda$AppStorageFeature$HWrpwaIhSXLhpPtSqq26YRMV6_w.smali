.class public final synthetic Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/storage/AppStorageFeature;

.field private final synthetic f$1:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/AppStorageFeature;Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;->f$0:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;->f$1:Lcom/android/settings/applications/AppStorageSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;->f$0:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;->f$1:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->lambda$getUninstallDialog$0$AppStorageFeature(Lcom/android/settings/applications/AppStorageSettings;Landroid/content/DialogInterface;I)V

    return-void
.end method
