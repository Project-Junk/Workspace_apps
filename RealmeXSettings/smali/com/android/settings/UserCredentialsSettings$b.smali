.class final Lcom/android/settings/UserCredentialsSettings$b;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/UserCredentialsSettings$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/settings/UserCredentialsSettings$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 500
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$b$1;

    invoke-direct {v0}, Lcom/android/settings/UserCredentialsSettings$b$1;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/UserCredentialsSettings$b;-><init>(Ljava/lang/String;I)V

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 478
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$b$a;->values()[Lcom/android/settings/UserCredentialsSettings$b$a;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    const-wide/16 v5, 0x1

    .line 479
    invoke-virtual {v4}, Lcom/android/settings/UserCredentialsSettings$b$a;->ordinal()I

    move-result v7

    shl-long/2addr v5, v7

    and-long/2addr v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/settings/UserCredentialsSettings$b;->c:Ljava/util/EnumSet;

    invoke-virtual {v5, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const-class v0, Lcom/android/settings/UserCredentialsSettings$b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$b;->c:Ljava/util/EnumSet;

    .line 470
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    .line 471
    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$b;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 512
    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$b;->b:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 486
    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget p2, p0, Lcom/android/settings/UserCredentialsSettings$b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-object p2, p0, Lcom/android/settings/UserCredentialsSettings$b;->c:Ljava/util/EnumSet;

    invoke-virtual {p2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/UserCredentialsSettings$b$a;

    const-wide/16 v3, 0x1

    .line 491
    invoke-virtual {v2}, Lcom/android/settings/UserCredentialsSettings$b$a;->ordinal()I

    move-result v2

    shl-long v2, v3, v2

    or-long/2addr v0, v2

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
