.class final Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;
.super Ljava/lang/Object;
.source "StorageAsyncLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;->a:Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 1081
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
