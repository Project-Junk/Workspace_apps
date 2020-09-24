.class final Lcom/android/settings/wifi/savedaccesspoints/a$1;
.super Ljava/lang/Object;
.source "SavedNetworkComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/savedaccesspoints/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/wifi/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/icu/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/a$1;->a:Landroid/icu/text/Collator;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 27
    check-cast p1, Lcom/android/settingslib/wifi/a;

    check-cast p2, Lcom/android/settingslib/wifi/a;

    .line 1032
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/a$1;->a:Landroid/icu/text/Collator;

    .line 1033
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/savedaccesspoints/a$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/wifi/savedaccesspoints/a$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1032
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
