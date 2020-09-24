.class public final Lcom/android/settings/display/AppGridView$a;
.super Ljava/lang/Object;
.source "AppGridView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/display/AppGridView$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/pm/ResolveInfo;

.field public final b:Ljava/lang/String;

.field final c:Landroid/util/IconDrawableFactory;

.field final d:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/util/IconDrawableFactory;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/android/settings/display/AppGridView$a;->a:Landroid/content/pm/ResolveInfo;

    .line 148
    iput-object p2, p0, Lcom/android/settings/display/AppGridView$a;->b:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/android/settings/display/AppGridView$a;->c:Landroid/util/IconDrawableFactory;

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/AppGridView$a;->d:I

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 138
    check-cast p1, Lcom/android/settings/display/AppGridView$a;

    .line 1155
    iget-object v0, p0, Lcom/android/settings/display/AppGridView$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/display/AppGridView$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/display/AppGridView$a;->b:Ljava/lang/String;

    return-object v0
.end method
