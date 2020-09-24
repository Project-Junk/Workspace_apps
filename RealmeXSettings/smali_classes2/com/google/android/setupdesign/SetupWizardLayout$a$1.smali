.class final Lcom/google/android/setupdesign/SetupWizardLayout$a$1;
.super Ljava/lang/Object;
.source "SetupWizardLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/SetupWizardLayout$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/setupdesign/SetupWizardLayout$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2420
    new-instance v0, Lcom/google/android/setupdesign/SetupWizardLayout$a;

    invoke-direct {v0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1425
    new-array p1, p1, [Lcom/google/android/setupdesign/SetupWizardLayout$a;

    return-object p1
.end method
