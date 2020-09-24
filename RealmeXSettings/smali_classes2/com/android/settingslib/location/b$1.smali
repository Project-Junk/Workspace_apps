.class final Lcom/android/settingslib/location/b$1;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/location/b;->b(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/location/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/location/b;


# direct methods
.method constructor <init>(Lcom/android/settingslib/location/b;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/settingslib/location/b$1;->a:Lcom/android/settingslib/location/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 163
    check-cast p1, Lcom/android/settingslib/location/b$a;

    check-cast p2, Lcom/android/settingslib/location/b$a;

    .line 1166
    iget-wide v0, p1, Lcom/android/settingslib/location/b$a;->g:J

    iget-wide p1, p2, Lcom/android/settingslib/location/b$a;->g:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
