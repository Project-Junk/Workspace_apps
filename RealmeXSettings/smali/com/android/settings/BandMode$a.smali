.class final Lcom/android/settings/BandMode$a;
.super Ljava/lang/Object;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/android/settings/BandMode$a;->a:I

    .line 111
    iput p1, p0, Lcom/android/settings/BandMode$a;->a:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 119
    iget v0, p0, Lcom/android/settings/BandMode$a;->a:I

    invoke-static {}, Lcom/android/settings/BandMode;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Band mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/BandMode$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/settings/BandMode;->a()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/BandMode$a;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
