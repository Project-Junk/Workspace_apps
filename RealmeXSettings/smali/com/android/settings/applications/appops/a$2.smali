.class final Lcom/android/settings/applications/appops/a$2;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/appops/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/a$2;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 460
    check-cast p1, Lcom/android/settings/applications/appops/a$b;

    check-cast p2, Lcom/android/settings/applications/appops/a$b;

    .line 1464
    iget-object v0, p0, Lcom/android/settings/applications/appops/a$2;->a:Ljava/text/Collator;

    .line 2353
    iget-object p1, p1, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 3258
    iget-object p1, p1, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    .line 3353
    iget-object p2, p2, Lcom/android/settings/applications/appops/a$b;->b:Lcom/android/settings/applications/appops/a$a;

    .line 4258
    iget-object p2, p2, Lcom/android/settings/applications/appops/a$a;->e:Ljava/lang/String;

    .line 1464
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
