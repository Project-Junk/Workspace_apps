.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/panel/PanelFragment;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:Landroidx/lifecycle/LiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/lifecycle/LiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;->f$0:Lcom/android/settings/panel/PanelFragment;

    iput-object p2, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;->f$2:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;->f$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;->f$2:Landroidx/lifecycle/LiveData;

    check-cast p1, Landroidx/slice/Slice;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$z89RtpX81HMA1iw7Nvof3FjFSzU(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/lifecycle/LiveData;Landroidx/slice/Slice;)V

    return-void
.end method
