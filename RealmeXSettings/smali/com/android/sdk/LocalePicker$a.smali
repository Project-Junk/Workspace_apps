.class public final Lcom/android/sdk/LocalePicker$a;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sdk/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/sdk/LocalePicker$a;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/text/Collator;


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/sdk/LocalePicker$a;->a:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/sdk/LocalePicker$a;->c:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 61
    check-cast p1, Lcom/android/sdk/LocalePicker$a;

    .line 1091
    sget-object v0, Lcom/android/sdk/LocalePicker$a;->a:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/sdk/LocalePicker$a;->b:Ljava/lang/String;

    return-object v0
.end method
