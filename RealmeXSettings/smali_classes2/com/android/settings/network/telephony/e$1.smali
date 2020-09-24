.class final Lcom/android/settings/network/telephony/e$1;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"

# interfaces
.implements Lcom/google/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/d/a/c<",
        "Ljava/util/List<",
        "Landroid/telephony/CellInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/e;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/e;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/network/telephony/e$1;->a:Lcom/android/settings/network/telephony/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 171
    check-cast p1, Ljava/util/List;

    .line 1174
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$1;->a:Lcom/android/settings/network/telephony/e;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/e;->a(Lcom/android/settings/network/telephony/e;Ljava/util/List;)V

    .line 1175
    iget-object p1, p0, Lcom/android/settings/network/telephony/e$1;->a:Lcom/android/settings/network/telephony/e;

    invoke-static {p1}, Lcom/android/settings/network/telephony/e;->a(Lcom/android/settings/network/telephony/e;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/telephony/e$1;->a:Lcom/android/settings/network/telephony/e;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/e;->a(Lcom/android/settings/network/telephony/e;I)V

    return-void
.end method
