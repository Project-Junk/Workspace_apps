.class public final Lcom/android/setupwizardlib/SetupWizardLayout$a;
.super Landroid/view/View$BaseSavedState;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/SetupWizardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/setupwizardlib/SetupWizardLayout$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 419
    new-instance v0, Lcom/android/setupwizardlib/SetupWizardLayout$a$1;

    invoke-direct {v0}, Lcom/android/setupwizardlib/SetupWizardLayout$a$1;-><init>()V

    sput-object v0, Lcom/android/setupwizardlib/SetupWizardLayout$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 409
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$a;->a:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout$a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 402
    iput-boolean p1, p0, Lcom/android/setupwizardlib/SetupWizardLayout$a;->a:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 415
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 416
    iget-boolean p2, p0, Lcom/android/setupwizardlib/SetupWizardLayout$a;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
