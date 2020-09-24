.class public final Lcom/android/settings/c/a$a$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/c/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/c/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/c/a$a;",
        "Lcom/android/settings/c/a$a$a;",
        ">;",
        "Lcom/android/settings/c/a$d;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 984
    invoke-static {}, Lcom/android/settings/c/a$a;->c()Lcom/android/settings/c/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 977
    invoke-direct {p0}, Lcom/android/settings/c/a$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/c/a$a$b;)Lcom/android/settings/c/a$a$a;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/android/settings/c/a$a$a;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/android/settings/c/a$a$a;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/c/a$a;

    invoke-static {v0, p1}, Lcom/android/settings/c/a$a;->a(Lcom/android/settings/c/a$a;Lcom/android/settings/c/a$a$b;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;
    .locals 1

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/c/a$a$a;->copyOnWrite()V

    .line 1029
    iget-object v0, p0, Lcom/android/settings/c/a$a$a;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/c/a$a;

    invoke-static {v0, p1}, Lcom/android/settings/c/a$a;->a(Lcom/android/settings/c/a$a;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/android/settings/c/a$a$a;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/android/settings/c/a$a$a;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/c/a$a;

    invoke-static {v0, p1}, Lcom/android/settings/c/a$a;->b(Lcom/android/settings/c/a$a;Ljava/lang/String;)V

    return-object p0
.end method
