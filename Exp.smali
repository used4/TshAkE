.class public Lcom/example/myapplication/Exp;
.super Ljava/lang/Object;


# static fields
.field private static final JSON_URL:Ljava/lang/String; = "https://raw.githubusercontent.com/used4/Tempkey/refs/heads/main/GitUpdate.json"

.field private static final KEY_JSON:Ljava/lang/String; = "cached_update_json"

.field private static final PREF_NAME:Ljava/lang/String; = "update_cache"

.field private static currentDialog:Landroid/app/AlertDialog;

.field private static lastShownJson:Lorg/json/JSONObject;

.field private static refreshHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$sfgetcurrentDialog()Landroid/app/AlertDialog;
    .registers 1

    sget-object v0, Lcom/example/myapplication/Exp;->currentDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetlastShownJson()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/example/myapplication/Exp;->lastShownJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputcurrentDialog(Landroid/app/AlertDialog;)V
    .registers 1

    sput-object p0, Lcom/example/myapplication/Exp;->currentDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlastShownJson(Lorg/json/JSONObject;)V
    .registers 1

    sput-object p0, Lcom/example/myapplication/Exp;->lastShownJson:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$smdp(Landroid/content/Context;F)I
    .registers 2

    invoke-static {p0, p1}, Lcom/example/myapplication/Exp;->dp(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisDarkMode(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/example/myapplication/Exp;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidCredit(Lorg/json/JSONObject;)Z
    .registers 1

    invoke-static {p0}, Lcom/example/myapplication/Exp;->isValidCredit(Lorg/json/JSONObject;)Z

    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$smscheduleJsonRefresh(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/example/myapplication/Exp;->scheduleJsonRefresh(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/example/myapplication/Exp;->currentDialog:Landroid/app/AlertDialog;

    sput-object v0, Lcom/example/myapplication/Exp;->lastShownJson:Lorg/json/JSONObject;

    sput-object v0, Lcom/example/myapplication/Exp;->refreshHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dp(Landroid/content/Context;F)I
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static isDarkMode(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isValidCredit(Lorg/json/JSONObject;)Z
    .registers 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    :try_start_3
    new-array v0, v0, [C

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v2, 0x52

    const/4 v3, 0x1

    aput-char v2, v0, v3

    const/4 v2, 0x2

    const/16 v3, 0x2e

    aput-char v3, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x20

    aput-char v3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x4e

    aput-char v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x6f

    aput-char v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x4f

    aput-char v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x42

    aput-char v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_3d

    aget-char v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "credit"

    const-string v5, "hiiq3"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_52

    return v1

    :catch_52
    move-exception v0

    return v1
.end method

.method static synthetic lambda$scheduleJsonRefresh$0(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/example/myapplication/Exp$2;

    invoke-direct {v0, p0}, Lcom/example/myapplication/Exp$2;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/example/myapplication/Exp$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static scheduleJsonRefresh(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/example/myapplication/Exp;->refreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/example/myapplication/Exp;->refreshHandler:Landroid/os/Handler;

    new-instance v1, Lcom/example/myapplication/Exp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/example/myapplication/Exp$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/example/myapplication/Exp$1;

    invoke-direct {v0, p0}, Lcom/example/myapplication/Exp$1;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/example/myapplication/Exp$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
