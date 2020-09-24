.class public Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "PrivateVolumeUnmount.java"


# instance fields
.field private a:Landroid/os/storage/VolumeInfo;

.field private b:Landroid/os/storage/DiskInfo;

.field private final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->a:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->setHasOptionsMenu(Z)V

    .line 50
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->a(Lcom/android/settings/core/InstrumentedFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->a:Landroid/os/storage/VolumeInfo;

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->a:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->b:Landroid/os/storage/DiskInfo;

    const/4 p3, 0x0

    const v0, 0x7f0d02ea

    .line 61
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00e3

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a018d

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f12157a    # 1.941788E38f

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->b:Landroid/os/storage/DiskInfo;

    .line 66
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    .line 65
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
